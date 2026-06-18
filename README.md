# Takehome — Todo Search

A small SwiftUI app that searches todos from a remote API. The architecture
(View → ViewModel → `TodoService` → `APIService`) and protocols are already in
place. Your job is to fill in the gaps marked with `// TODO`.

## Tasks

1. **`APIService.fetchData`** — build the request from `APIRequest.fullPath`,
   call the endpoint, and decode the JSON into `[T]`. (Bonus: keep it generic.)
2. **`TodoService.fetch`** — use `apiService` to return the todos matching the
   search text.
3. **Wire up `MainView`** so search results display and navigation works.
4. **Add tests** in `TakehomeTodoTests` against the service protocols.

## Run

Open `TakehomeTodo.xcodeproj` in Xcode and run on any iOS Simulator.

## What we look for

Correct async/await + decoding, sensible error handling, testability, and
clean, readable Swift.
