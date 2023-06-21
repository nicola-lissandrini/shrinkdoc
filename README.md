# shrinkdoc

This script compresses PDF files in a directory that are larger than a specified threshold. It helps reduce the file size of PDF documents, making them more manageable and easier to share.

## Usage

1. Ensure the script has execution permission: `$ chmod +x shrinkdoc.sh`
2. Run the script: `$ ./shrinkdoc.sh [threshold]`

### Options

- `threshold`: The threshold size in megabytes (MB).

## Description

The PDF Compression Script is a Bash script that automates the compression of PDF files. It utilizes the `find` command to locate PDF files in a given directory that exceed the specified threshold size. By default, the threshold is set to 500MB. The uncompressed PDFs are moved to a separate directory named "not_compressed" for safekeeping and organizational purposes.

To use the script, navigate to the directory containing the PDF files you want to compress and run the `compress_pdf.sh` script. If you want to set a custom threshold, specify the desired threshold value in kilobytes (KB) or megabytes (MB). When executing the script, use the following formats:

- Megabytes (MB): `[threshold]M`
  - Example: `./shrinkdoc.sh 50M` (for a threshold of 50MB)
- Kilobytes (KB): `[threshold]k`
  - Example: `./shrinkdoc.sh 1000k` (for a threshold of 1000 kilobytes, or 1MB)

```bash
$ ./compress_pdf.sh 100M
```

In the example above, the script compresses PDF files larger than 100MB in the current directory.

To display the usage message and available options, use the `--help` or `-h` flag:

```bash
$ ./compress_pdf.sh --help
```

The usage message provides an overview of the script's purpose, usage format, and available options.

Please note that the script assumes the presence of the `find` command and `ghostscript`. Make sure these dependencies are installed on your system for the script to work correctly.
