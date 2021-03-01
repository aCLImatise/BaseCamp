from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Amas_Py_Command_V0_1_0 = CommandToolBuilder(tool="AMAS.py_command", base_command=["AMAS.py", "command"], inputs=[ToolInput(tag="in_concat", input_type=String(), position=0, doc=InputDocumentation(doc="Concatenate input alignments")), ToolInput(tag="in_convert", input_type=String(), position=1, doc=InputDocumentation(doc="Convert to other file format")), ToolInput(tag="in_replicate", input_type=String(), position=2, doc=InputDocumentation(doc="Create replicate data sets for phylogenetic jackknife")), ToolInput(tag="in_split", input_type=String(), position=3, doc=InputDocumentation(doc="Split alignment according to a partitions file")), ToolInput(tag="in_summary", input_type=String(), position=4, doc=InputDocumentation(doc="Write alignment summary")), ToolInput(tag="in_remove", input_type=String(), position=5, doc=InputDocumentation(doc="Remove taxa from alignment")), ToolInput(tag="in_translate", input_type=String(), position=6, doc=InputDocumentation(doc="Translate DNA alignment into protein alignment")), ToolInput(tag="in_trim", input_type=String(), position=7, doc=InputDocumentation(doc="Remove columns from alignment")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="Subcommand to run"))], outputs=[], container="quay.io/biocontainers/amas:1.0--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amas_Py_Command_V0_1_0().translate("wdl")

