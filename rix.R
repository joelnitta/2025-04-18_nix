# Need this for authentication via rix when using gitcreds
# https://docs.ropensci.org/rix/articles/z-advanced-topic-handling-packages-with-remote-dependencies.html#authenticating-to-github
my_token <- gitcreds::gitcreds_get()$password
Sys.setenv(GITHUB_PAT = my_token)


# Snapshot rix environment
rix::rix(
  r_ver = "4.5.0",
  r_pkgs = c("languageserver", "glue"),
  system_pkgs = NULL,
  git_pkgs = NULL,
  ide = "none",
  project_path = ".",
  overwrite = TRUE
)
