class_name Math

## 1 tile
const SINGLE := 8.0

## 2 tiles
const DOUBLE := 16.0

## 3 tiles
const TRIPLE := 24.0

## 4 tiles
const QUADRUPLE := 32.0

## 5 tiles
const QUINTUPLE := 40.0

## 6 tiles
const SEXTUPLE := 48.0

## 7 tiles
const SEPTUPLE := 56.0

## 8 tiles
const OCTUPLE := 64.0

## 9 tiles
const NONUPLE := 72.0

## 10 tiles
const DECUPLE := 80.0

## 90 degrees
const HALF_PI := PI / 2.0

## Directions
const DIRECTIONS := [
	Vector2i.UP,
	Vector2i.LEFT,
	Vector2i.DOWN,
	Vector2i.RIGHT
]


static func vec2(value: float) -> Vector2:
	return Vector2(value, value)


static func int2bin(value: int) -> String:
	var binary = ""
	while value > 0:
		binary = str(value & 1) + binary
		value = value >> 1
	return binary


static func betweeni(value: int, min_value: int, max_value: int) -> bool:
	return value >= min_value and value <= max_value


static func clampv(value: Vector2, min_value: Vector2, max_value: Vector2) -> Vector2:
	return Vector2(
		clampf(value.x, min_value.x, max_value.x),
		clampf(value.y, min_value.y, max_value.y))


static func minv(a: Vector2, b: Vector2) -> Vector2:
	return Vector2(minf(a.x, b.x), minf(a.y, b.y))


static func maxv(a: Vector2, b: Vector2) -> Vector2:
	return Vector2(maxf(a.x, b.x), maxf(a.y, b.y))


static func maskv(unit: Vector2) -> Vector2:
	assert(is_equal_approx(unit.length_squared(), 1.0))
	return Vector2.ONE - unit.abs()
