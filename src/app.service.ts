import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Node js Monitoring with Docker, Kubernetes, Prometheus & Grafana!';
  }
}
