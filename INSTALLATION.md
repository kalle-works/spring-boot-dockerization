### **Asennusohjeet workshopia varten tarvittaville työkaluille**

Tässä ohjeet, joiden avulla osallistujat voivat asentaa tarvittavat työkalut **Macille** ja **Windowsille**. Työkalut sisältävät **Java**, **Maven tai Gradle**, **Docker**, ja **koodieditori**.

---

## **1. Java JDK 17+**
### **Mac**
1. Avaa terminaali ja asenna `brew`, jos sitä ei ole vielä asennettu:  
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Asenna OpenJDK:
   ```bash
   brew install openjdk@17
   ```
3. Lisää Java PATH muuttuja (jos tarvitaan):
   ```bash
   sudo ln -sfn /usr/local/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
   echo 'export PATH="/usr/local/opt/openjdk@17/bin:$PATH"' >> ~/.zshrc
   source ~/.zshrc
   ```
4. Tarkista asennus:
   ```bash
   java -version
   ```

### **Windows**
1. Lataa OpenJDK 17 Adoptiumilta:  
   [https://adoptium.net](https://adoptium.net)
2. Asenna ladattu tiedosto.
3. Lisää Java PATH muuttuja:
   - Avaa **Järjestelmän asetukset** > **Järjestelmä** > **Lisäasetukset** > **Ympäristömuuttujat**.
   - Lisää `JAVA_HOME`:
     - Uusi järjestelmämuuttuja: `JAVA_HOME` ja arvo: `C:\Program Files\Eclipse Adoptium\jdk-17.0.x`.
   - Päivitä PATH muuttuja: Lisää `%JAVA_HOME%\bin`.
4. Tarkista asennus:
   ```cmd
   java -version
   ```

---

## **2. Maven (tai Gradle)**
### **Mac**
1. Asenna Maven:
   ```bash
   brew install maven
   ```
2. Tarkista asennus:
   ```bash
   mvn -version
   ```

### **Windows**
1. Lataa Maven Binary zip:  
   [https://maven.apache.org/download.cgi](https://maven.apache.org/download.cgi).
2. Pura tiedosto esim. `C:\Program Files\Apache\Maven`.
3. Lisää Maven PATH muuttuja:
   - Avaa **Ympäristömuuttujat**.
   - Lisää muuttuja `M2_HOME` ja osoita Mavenin asennushakemistoon.
   - Päivitä PATH lisäämällä `%M2_HOME%\bin`.
4. Tarkista asennus:
   ```cmd
   mvn -version
   ```

---

## **3. Docker Desktop**
### **Mac**
1. Lataa Docker Desktop:  
   [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. Asenna ohjelma ja käynnistä.
3. Seuraa asennusohjeita ja varmista, että Docker toimii:
   ```bash
   docker --version
   ```

### **Windows**
1. Lataa Docker Desktop:  
   [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. Asenna ohjelma ja varmista, että Windowsin virtualisointi on käytössä:
   - Käynnistä BIOS ja ota **Hyper-V** käyttöön.
3. Asennuksen jälkeen tarkista Dockerin toimivuus:
   ```cmd
   docker --version
   ```

---

## **4. Koodieditori (esim. Visual Studio Code)**
### **Mac ja Windows**
1. Lataa ja asenna Visual Studio Code:  
   [https://code.visualstudio.com/](https://code.visualstudio.com/).
2. Asenna seuraavat laajennukset:
   - **Java Extension Pack**: Lisää tuki Java-koodille.
   - **Docker Extension**: Lisää tuki Docker-komentojen ja tiedostojen hallintaan.

---

## **5. Spring Boot CLI (valinnainen)**
### **Mac**
1. Asenna Spring Boot CLI käyttäen `brew`:
   ```bash
   brew install springboot
   ```
2. Tarkista asennus:
   ```bash
   spring --version
   ```

### **Windows**
1. Lataa Spring Boot CLI zip:  
   [https://spring.io/tools](https://spring.io/tools).
2. Pura zip esim. `C:\spring-boot-cli`.
3. Lisää CLI PATH:
   - Lisää ympäristömuuttujaan `C:\spring-boot-cli\bin`.
4. Tarkista asennus:
   ```cmd
   spring --version
   ```

---

## **Testaa ympäristösi**
- Suorita yhteenvetotesti:
  ```bash
  java -version
  mvn -version
  docker --version
  spring --version (valinnainen)
  ```
- Luo pieni Spring Boot -projekti:
  ```bash
  spring init --dependencies=web demo
  cd demo
  mvn spring-boot:run
  ```