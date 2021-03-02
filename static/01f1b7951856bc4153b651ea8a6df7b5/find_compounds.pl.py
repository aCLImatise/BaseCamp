from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Find_Compounds_Pl_V0_1_0 = CommandToolBuilder(tool="find_compounds.pl", base_command=["find-compounds.pl"], inputs=[ToolInput(tag="in_new_line", input_type=Boolean(optional=True), prefix="--newline", doc=InputDocumentation(doc="Find compound words in one line.")), ToolInput(tag="in_output_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_source_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_compound_word_list", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Compounds_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

