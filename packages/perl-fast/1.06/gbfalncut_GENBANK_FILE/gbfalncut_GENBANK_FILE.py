from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gbfalncut_Genbank_File_V0_1_0 = CommandToolBuilder(tool="gbfalncut_GENBANK_FILE", base_command=["gbfalncut", "GENBANK-FILE"], inputs=[ToolInput(tag="in_perl_regex", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/perl-fast:1.06--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gbfalncut_Genbank_File_V0_1_0().translate("wdl")

