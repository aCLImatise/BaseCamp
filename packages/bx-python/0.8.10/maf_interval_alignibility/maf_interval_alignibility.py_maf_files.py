from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Maf_Interval_Alignibility_Py_Maf_Files_V0_1_0 = CommandToolBuilder(tool="maf_interval_alignibility.py_maf_files", base_command=["maf_interval_alignibility.py", "maf_files"], inputs=[ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc=": Comma separated list of species to include")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc=": Prefix to add to each interval chrom (usually reference species)")), ToolInput(tag="in_use_cache", input_type=Boolean(optional=True), prefix="--usecache", doc=InputDocumentation(doc=":   Use a cache that keeps blocks of the MAF files in memory (requires ~20MB per MAF)")), ToolInput(tag="in_tested_dot", input_type=String(), position=0, doc=InputDocumentation(doc="usage: /usr/local/bin/maf_interval_alignibility.py maf_files [options] < interval_file"))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Interval_Alignibility_Py_Maf_Files_V0_1_0().translate("wdl")

