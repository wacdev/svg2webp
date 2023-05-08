#!/usr/bin/env coffee

> ../index.js > svgWebp
  ava:test
  path > join dirname
  @w5/uridir
  @w5/write
  @w5/read

ROOT = dirname uridir import.meta

test(
  'svg → webp'
  (t) =>
    r = await svgWebp(
      read join ROOT, 'logo.svg'
      80
    )
    write(
      join(ROOT, 'logo.webp')
      r
    )
    t.true(r instanceof Buffer)
    return
)
