from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Blobtools_Map2Cov_V0_1_0 = CommandToolBuilder(tool="blobtools_map2cov", base_command=["blobtools", "map2cov"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="FASTA file of assembly. Headers are split at whitespaces.")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="...          BAM file (requires pysam)")), ToolInput(tag="in_cas", input_type=File(optional=True), prefix="--cas", doc=InputDocumentation(doc="...          CAS file (requires clc_mapping_info in $PATH)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_calculate_cov", input_type=Boolean(optional=True), prefix="--calculate_cov", doc=InputDocumentation(doc="Legacy coverage, slower. New default is to estimate coverages\nbased on read lengths of first 10K reads.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blobtools_Map2Cov_V0_1_0().translate("wdl", allow_empty_container=True)

