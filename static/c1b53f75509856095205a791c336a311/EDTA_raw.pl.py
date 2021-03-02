from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Edta_Raw_Pl_V0_1_0 = CommandToolBuilder(tool="EDTA_raw.pl", base_command=["EDTA_raw.pl"], inputs=[ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="--genome", doc=InputDocumentation(doc="[File]  The genome FASTA")), ToolInput(tag="in_species", input_type=Boolean(optional=True), prefix="--species", doc=InputDocumentation(doc="[rice|maize|others]   Specify the species for identification of TIR candidates. Default: others")), ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="--type", doc=InputDocumentation(doc="[ltr|tir|helitron|all]  Specify which type of raw TE candidates you want to get. Default: all")), ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="[0|1]   If previous results are found, decide to overwrite (1, rerun) or not (0, default).")), ToolInput(tag="in_convert_seq_name", input_type=Boolean(optional=True), prefix="--convert_seq_name", doc=InputDocumentation(doc="[0|1]   Convert long sequence name to <= 15 characters and remove annotations (1, default) or use the original (0)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="[int]   Number of theads to run this script. Default: 4"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edta_Raw_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

