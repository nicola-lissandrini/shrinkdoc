# shrinkdoc

This script compresses PDF files in a directory that are larger than a specified threshold. It helps reduce the file size of PDF documents, making them more manageable and easier to share.

## Usage

```bash
$ ./compress_pdf.sh [threshold]
```

Compresses PDF files in a directory larger than a specified threshold. If the threshold is not provided, a default value of 500MB is used.

### Options

- `threshold`: The threshold size in megabytes (MB).

## Description

The PDF Compression Script is a Bash script that automates the compression of PDF files. It utilizes the `find` command to locate PDF files in a given directory that exceed the specified threshold size. By default, the threshold is set to 500MB.

To use the script, navigate to the directory containing the PDF files you want to compress and run the `compress_pdf.sh` script. If you want to set a custom threshold, specify the desired threshold value in megabytes as a command-line argument. For instance:

```bash
$ ./compress_pdf.sh 100M
```

In the example above, the script compresses PDF files larger than 100MB in the current directory.

To display the usage message and available options, use the `--help` or `-h` flag:

```bash
$ ./compress_pdf.sh --help
```

The usage message provides an overview of the script's purpose, usage format, and available options.

Please note that the script assumes the presence of the `find` command and ghostscript (e.g., `qpdf`). Make sure these dependencies are installed on your system for the script to work correctly.
