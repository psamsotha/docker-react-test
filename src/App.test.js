import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

test('1 + 1 == 2', () => {
  const val = 1 + 1;
  expect(val).toBe(2);
});

test('2 + 2 == 4', () => {
  const val = 2 + 2;
  expect(val).toBe(4);
});
