from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pair_Sequences_V0_1_0 = CommandToolBuilder(tool="pair_sequences", base_command=["pair_sequences"], inputs=[ToolInput(tag="in_tsv_file_patientsampleclustertype", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="tsv file of patient/sample/cluster/type mapping")), ToolInput(tag="in_msa_file_containing", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="MSA file containing the alignments between patient-sample")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="-o pairs     Output file for final pairs"))], outputs=[], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pair_Sequences_V0_1_0().translate("wdl")

