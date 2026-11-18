import { Injectable } from '@nestjs/common';
import client from 'prom-client';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Node js Monitoring with Docker, Kubernetes, Prometheus & Grafana!';
  }
}
