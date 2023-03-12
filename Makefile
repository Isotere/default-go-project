
.PHONY: vendor
vendor:
	go mod tidy && go mod vendor


.PHONY: vet
vet:
	go vet ./...
	# Проверка затененных (shadowed) переменных
	# go install golang.org/x/tools/go/analysis/passes/shadow/cmd/shadow@latest
	shadow ./...