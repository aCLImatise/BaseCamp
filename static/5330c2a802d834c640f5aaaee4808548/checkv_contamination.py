from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Checkv_Contamination_V0_1_0 = CommandToolBuilder(tool="checkv_contamination", base_command=["checkv", "contamination"], inputs=[ToolInput(tag="in_reference_database_path", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Reference database path. By default the CHECKVDB environment\nvariable is used")), ToolInput(tag="in_number_threads_use", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of threads to use for Prodigal and hmmsearch")), ToolInput(tag="in_restart", input_type=Boolean(optional=True), prefix="--restart", doc=InputDocumentation(doc="Overwrite existing intermediate files. By default CheckV\ncontinues where program left off")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress logging messages")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input nucleotide sequences in FASTA format")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkv_Contamination_V0_1_0().translate("wdl", allow_empty_container=True)

