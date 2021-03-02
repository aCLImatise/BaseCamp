from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String

Allele_Specific_Modification_V0_1_0 = CommandToolBuilder(tool="allele_specific_modification", base_command=["allele_specific_modification"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Bed file to aggregate modifications on.")), ToolInput(tag="in_cut_off", input_type=Float(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="FDR cutoff. Default: 0.05")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="File to write results to. Default: stdout.")), ToolInput(tag="in_methylation", input_type=String(), position=0, doc=InputDocumentation(doc="Haplotype specific frequency files."))], outputs=[], container="quay.io/biocontainers/methplotlib:0.17.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Allele_Specific_Modification_V0_1_0().translate("wdl")

