# Afterglow — Spicetify Theme

A simple dark theme inspired by deep navy/plum backgrounds and warm pink accents. It is designed as a small starting point you can test, understand, and customize before publishing.

## Install on Windows

1. Close Spotify.
2. Copy the entire `Afterglow` folder into `%appdata%\spicetify\Themes\`.
3. Open PowerShell and run:

   ```powershell
   spicetify config current_theme Afterglow color_scheme Afterglow
   spicetify apply
   ```

If your theme folder does not exist yet, create `%appdata%\spicetify\Themes\` first. If Spicetify is not on your PATH, run the commands from a terminal where `spicetify` is available.

## Customize it

- Change the hex colors in `color.ini` to change the main UI palette.
- Change the radius, pink accent, hover color, and CSS selectors near the top of `user.css`.
- After changes, run `spicetify apply` again. During active CSS work, `spicetify watch -s` may help refresh theme changes.

## Restore the default theme

```powershell
spicetify config current_theme "" color_scheme ""
spicetify apply
```

## Before publishing

- Replace `preview.png` with a real screenshot of Afterglow applied to Spotify. The included image is a concept preview, not a screenshot of Spotify.
- Replace/add your GitHub username and profile link in `manifest.json` under `authors` if desired.
- Put these files in the root of a public GitHub repository and add the `spicetify-themes` repository topic so Marketplace can discover it.
- Test with your currently installed Spotify and Spicetify versions. Spotify's internal CSS classes can change over time.

## Note

This theme styles Spotify's existing layout. CSS alone does not reproduce the full custom three-column app layout in the original inspiration image.
