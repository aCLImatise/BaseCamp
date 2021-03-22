from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Legacy_Blast_Pl_V0_1_0 = CommandToolBuilder(tool="legacy_blast.pl", base_command=["legacy_blast.pl"], inputs=[ToolInput(tag="in_path", input_type=Boolean(optional=True), prefix="--path", doc=InputDocumentation(doc="Use the provided path as the location of the BLAST binaries to\nexecute/print (default: /usr/bin).")), ToolInput(tag="in_print_only", input_type=Boolean(optional=True), prefix="--print_only", doc=InputDocumentation(doc="Print the equivalent command line option instead of running the\ncommand (default: false)."))], outputs=[], container="quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Legacy_Blast_Pl_V0_1_0().translate("wdl")

