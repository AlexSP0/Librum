# Librum

Librum is an application, designed to make reading as <b>enjoyable</b> and <b>straightforward</b> as possible for you.<br><br>

It is more than simply an e-book reader, Librum makes it possible for you, to manage your own library, which you can access from <b>all</b> of your devices at any time.<br>
Librum provides a variety of features to make you as productive as you can be, these features include being able to take <b>notes</b> from within the app, <b>book mark</b> and <b>highlight</b> important sections, while being able to customise the application to look exactly how you want it to. Librum also provides free access to over <b>60,000</b> books, custom <b>plugins</b> and your reading <b>statistics</b>, while remaining <b>free</b> and 100% <b>open source</b>.


<br>

The primary goals of Librum are to be <b>modern</b>, entirely <b>opensource</b>, <b>cost-free</b> and <b>fast</b>.</br>
Due to the complete copyleft license we are utilizing, anyone can download, edit, and redistribute the source code. 

<br>

# Preview

![View](data/app_preview/login_screen.png)
Your entry-point to Librum

<br>

![View](data/app_preview/book_reading.png)
Enjoy a simple and clean look while reading

<br>

![View](data/app_preview/appearance_settings.png)
Make the application look and feel the way you want

<br>

![View](data/app_preview/edit_metadata.png)
Setup and manage your own library

<br>

# Contact


For questions, you can reach us under: librum_help@protonmail.com
<br>
For business related contact, reach out to us here: librum_reader@protonmail.com

<br>

# Details

By Librum supported platforms:
- Windows
- GNU/Linux
- MacOS
- IOS
- Android

<br>

Feature list:
- E-Book reading
- Free in-app bookstore
- Cross-platform
- Book state syncing
- Highlighting
- Bookmarks
- Tags
- Note taking
- Chapter navigation
- TTS
- Automated page scrolling
- Syncing with 3rd parties (Google drive, dropbox, nextcloud)
- Book meta-data editing
- Library management
- Custom plugins
- Fine grained appearance customization
- Application behavior customization
- Statistics (optional)
    - Total time spent read
    - Daily reading avarage
    - Days read in a row
    - Books read in a week/month/year
    - Total books read
- No-login book reading
- Sharing / Priting books

<br>

Librum supports all major book formats, these include:
- PDF
- PS
- Tiff
- CHM
- DjVu
- Images
- DVI
- XPS
- Fiction Book
- Comic Book
- Plucker
- Pub
- Fax
- All plain text formats
- Most image formats


<br><br>

# Getting started

Instructions to get Librum up and running in your environment.

<b>Note</b>: Librum currently relies on KDE's infrastructure for okular. This will change soon, however for the time being, Librum and Okular may conflict.
If there is an issue with the Librum installation, consider temporarily uninstalling okular. 
<br><br>

## For GNU/Linux
### Prerequisites
- cmake (at least version 3.21)     https://cmake.org/download/
- make (or any other build system)  http://ftp.gnu.org/gnu/make/
- Qt 5.15                           https://www.qt.io/download
- Gcc (or any other c++ compiler)   https://gcc.gnu.org/

### Installation
1. Clone the repository.
    ```sh
    git clone --recurse-submodules -j4 https://github.com/Etovex/Librum.git
    ```
2. Step into the cloned project folder.
    ```sh
    cd Librum
    ```
3. Add the Qt path to the CMakeLists.txt<br>
    By default, Qt creator appends the path to Qt to the 'CMAKE_PREFIX_PATH' variable, you have 2 options for building Librum:
    <br>
    - Use Qt Creator to build the project (Simply open the CMakeLists.txt through Qt Creator, by clicking File -> Open File or Project...)
    - Add the path manually, for that, just copy this line
        ```sh
        list(APPEND CMAKE_PREFIX_PATH "/home/<username>/Qt/<Version>/<compiler>")
        ```
        to the third line of the top-level CMakeLists.txt and replace all contents in angular brackets '<>' with your data, for example:
        ```sh
        list(APPEND CMAKE_PREFIX_PATH "/home/john/Qt/5.15.5/gcc_64")
        ```
4. Create the build folder and step into it.
    ```sh
    mkdir build-Release
    cd build-Release
    ```
5. Run cmake.
    ```sh
    cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF ..
    ```
6. Build the project
    ```sh
    make
    ```
    Optionally, add the -j option to increase build speed. Pass it the number of cores you want "make" to use. E.g.:
    ```sh
    make -j
    ```
7. Install the files
    ```sh
    sudo make install
    ```
8. Run the app
    ```sh
    ./appLibrum
    ```
<br>


<br>

## For Windows
Not yet officially supported. Support coming soon!

## For macOS
Not yet officially supported. Support coming soon!
