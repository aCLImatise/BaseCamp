from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Export_Mitochondrial_Contigs_Py_V0_1_0 = CommandToolBuilder(tool="export_mitochondrial_contigs.py", base_command=["export_mitochondrial_contigs.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mitofinder:1.4--py27h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Export_Mitochondrial_Contigs_Py_V0_1_0().translate("wdl")

