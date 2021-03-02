from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean

Buildcustommodels_Pl_V0_1_0 = CommandToolBuilder(tool="buildCustomModels.pl", base_command=["buildCustomModels.pl"], inputs=[ToolInput(tag="in_datadir", input_type=Directory(optional=True), prefix="--datadir", doc=InputDocumentation(doc="<s>    :       Data directory for writing output to")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc=":       Database file default:[datadir/uniref90.fasta]")), ToolInput(tag="in_proteome", input_type=File(optional=True), prefix="--proteome", doc=InputDocumentation(doc=":       A proteome file in fasta format")), ToolInput(tag="in_test_mode", input_type=Boolean(optional=True), prefix="--testmode", doc=InputDocumentation(doc=":       Generate small database and proteome files for testing")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc=":       Turn on verbose messaging"))], outputs=[ToolOutput(tag="out_datadir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_datadir", type_hint=File()), doc=OutputDocumentation(doc="<s>    :       Data directory for writing output to"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Buildcustommodels_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

