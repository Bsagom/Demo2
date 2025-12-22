# Project Tasks: G-Insight

## 1주차: 데이터 구축 및 분석 (Data Phase)

### Day 1-3: 데이터 준비 및 DB 적재
- [ ] **Kaggle 데이터 다운로드 및 준비**
    - Olist E-commerce Dataset 다운로드
    - 데이터 정제 (전처리)
- [ ] **Database 구축 (MySQL/SQLite)**
    - DB 스키마 설계 (Star Schema)
    - `Orders` (Fact), `Order_Items` (Fact), `Products` (Dim), `Customers` (Dim) 테이블 생성
    - CSV 데이터를 DB 테이블로 적재 (Load)
- [ ] **ERD 문서화**
    - 테이블 관계 다이어그램 작성 및 저장

### Day 4-5: 핵심 쿼리 개발 (SQL Analysis)
- [ ] **RFM 세분화 쿼리 작성**
    - Recency, Frequency, Monetary 집계 쿼리 구현
    - 고객 등급(VIP, 이탈위험 등) 분류 로직 SQL 구현
- [ ] **매출/수익 분석 쿼리 작성**
    - 일별/월별 매출 집계
    - 마진율 시뮬레이션을 위한 기초 데이터 집계 쿼리
- [ ] **카테고리 연관 분석 쿼리 작성**
    - 함께 구매한 상품군 추출 쿼리 (Basket Analysis)

---

## 2주차: 애플리케이션 개발 (App Phase)

### Day 6-7: 데이터 로직 검증 (Prototyping)
- [ ] **Python 데이터 연동**
    - Pandas로 DB 연결 및 데이터 로드
- [ ] **비즈니스 로직 검증 (Jupyter Notebook)**
    - SQL 결과와 Pandas 처리 결과 정합성 확인
    - 프로모션 ROI 시뮬레이션 로직 Python 구현

### Day 8-10: 대시보드 UI 구현 (Streamlit)
- [ ] **Streamlit 프로젝트 셋업**
    - 기본 레이아웃 구성 (사이드바, 메인 페이지)
- [ ] **기능별 UI 개발**
    - [ ] **A. 프로모션 수익성 분석기**: Input(기간, 마진율) -> Output(매출, 영업이익, Insight 텍스트)
    - [ ] **B. 고객 세분화 탭**: RFM 등급별 현황 차트 및 테이블 시각화
    - [ ] **C. 카테고리 교차 판매**: 히트맵 시각화 및 추천 배너 UI
- [ ] **차트 시각화 (Plotly)**
    - 인터랙티브 차트 구현 및 연동

### Day 11-12: 마무리 및 문서화
- [ ] **인사이트 도출 및 Action Point 강화**
    - "Action Item" 영역 메시지 로직 고도화
- [ ] **최종 테스트 및 배포 준비**
- [ ] **문서화**
    - GitHub README 업데이트
    - 포트폴리오 문서 (PDF) 작성
