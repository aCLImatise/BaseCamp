from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Snps_To_Vcf_Py_V0_1_0 = CommandToolBuilder(tool="snps_to_vcf.py", base_command=["snps_to_vcf.py"], inputs=[], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snps_To_Vcf_Py_V0_1_0().translate("wdl")

