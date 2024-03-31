package service

type TestService interface {
	Test() string
}

// func NewTestService(config TestServiceConfig)

func Test() string {
	return "test"

}