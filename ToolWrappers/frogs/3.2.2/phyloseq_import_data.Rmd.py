from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phyloseq_Import_Data_Rmd_V0_1_0 = CommandToolBuilder(tool="phyloseq_import_data.Rmd", base_command=["phyloseq_import_data.Rmd"], inputs=[], outputs=[], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyloseq_Import_Data_Rmd_V0_1_0().translate("wdl")

