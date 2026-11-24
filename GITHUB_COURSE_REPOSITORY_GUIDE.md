# Suggested GEOG 524 GitHub course repository

Yes: create one course repository with a folder for each week. GitHub does not have a special "folder" button in the usual sense: folders appear when you create or upload files whose paths include the folder name.

A practical structure:

```text
GEOG524/
├── README.md
├── LICENSE
├── .gitignore
├── course-info/
│   ├── schedule.md
│   └── getting-started.md
├── week01/
│   ├── README.md
│   ├── slides/
│   ├── notebooks/
│   │   ├── python/
│   │   └── R/
│   ├── data/
│   └── exercises/
├── week02/
│   ├── README.md
│   ├── slides/
│   ├── notebooks/
│   ├── data/
│   └── exercises/
└── shared/
    ├── references/
    └── templates/
```

## Creating folders on GitHub's website
1. Open the course repository.
2. Choose **Add file → Create new file**.
3. In the filename box, type a path such as `week01/notebooks/python/README.md`.
4. GitHub creates the intermediate folders when you commit the file.
5. Alternatively, use **Add file → Upload files** and upload files while preserving the folder structure.

Git does not track empty folders. Put a small `README.md` in a folder that should exist before it has teaching files.

## A few recommendations
- Keep one authoritative instructor/course repository, with week-by-week materials.
- Put student-facing files in clearly named folders; do not commit instructor solutions or grading keys to a repository students can read.
- Use a private repository while course materials are being developed. If students need access, decide whether to make a separate student-facing repository or selectively publish student materials.
- A GitHub repository is not a replacement for Brightspace: use Brightspace for official instructions, submissions, grades and restricted materials.
- Do not commit student data, personal information, credentials, API keys, or confidential research data.
- Small example datasets are fine. Large datasets are usually better stored separately, with download instructions and provenance.
- Avoid uploading generated notebook outputs if they make diffs unreadable; clear outputs before committing when appropriate.

## Suggested first demonstration
Use a small public or course demo repository containing:
- `README.md` explaining the project;
- one Python notebook;
- one R script;
- one small text data file;
- a `.gitignore`.

Show the repository file list, open a file, view its commit history, then make a tiny change and show the difference. Students do not need to create or configure their own repositories in Lecture 1.

## Requirements files and environments — brief mention only
A Python project may record dependencies in `requirements.txt` or declare project metadata and dependencies in `pyproject.toml`. R projects commonly use `renv` to record package versions. A virtual environment (for example, Python's `venv`) gives a project its own package installation area, separate from system Python.

This helps when:
- the computer does not have the needed package installed;
- the user lacks administrator/system-wide installation permissions;
- different projects need different versions of a package;
- a project must be recreated later.

For Lecture 1, introduce the idea only. A fuller treatment belongs later, when students have used packages and encountered dependency issues. Colab manages much of the environment for the user, but reproducibility still requires documenting packages and versions when relevant.
