from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Fu_Grep_V0_1_0 = CommandToolBuilder(tool="fu_grep", base_command=["fu-grep"], inputs=[ToolInput(tag="in_annotate", input_type=Boolean(optional=True), prefix="--annotate", doc=InputDocumentation(doc="Add comments to the sequence when match is found")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc="Search pattern in sequence name (default: sequence)")), ToolInput(tag="in_comments", input_type=Boolean(optional=True), prefix="--comments", doc=InputDocumentation(doc="Search pattern in sequence comments (default: sequence)")), ToolInput(tag="in_stranded", input_type=Boolean(optional=True), prefix="--stranded", doc=InputDocumentation(doc="Do not search reverse complemented oligo")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Force output in FASTA format")), ToolInput(tag="in_dna_string", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pattern", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_example", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_test_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_test_two_dot_fa", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fu_Grep_V0_1_0().translate("wdl", allow_empty_container=True)

