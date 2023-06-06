// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
import Image from "next/image";

export default function Logo({ size }) {
  return (
    <Image
      priority
      //src="/images/banner_base_light.png"
      src="Screenshot-2023-06-06-at-17-15-15.png"
      width={size.w}
      height={size.h}
      alt="Powered by App Runner"
    />
  );
}
