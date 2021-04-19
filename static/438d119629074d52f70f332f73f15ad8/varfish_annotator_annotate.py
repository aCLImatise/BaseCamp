from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Varfish_Annotator_Annotate_V0_1_0 = CommandToolBuilder(tool="varfish_annotator_annotate", base_command=["varfish-annotator", "annotate"], inputs=[ToolInput(tag="in_case_id", input_type=Boolean(optional=True), prefix="--case-id", doc=InputDocumentation(doc="The value to use for case ID\nDefault: .")), ToolInput(tag="in_contig_regex", input_type=Boolean(optional=True), prefix="--contig-regex", doc=InputDocumentation(doc="Regular expression to use for selection of contigs\nDefault: ^(chr)?(\d+|X|Y|M|MT)$")), ToolInput(tag="in_set_id", input_type=Boolean(optional=True), prefix="--set-id", doc=InputDocumentation(doc="The value to use for set ID\nDefault: .\n")), ToolInput(tag="in_annotate", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/varfish-annotator-cli:0.15--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varfish_Annotator_Annotate_V0_1_0().translate("wdl")

