from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Check_Annotations_Py_V0_1_0 = CommandToolBuilder(tool="check_annotations.py", base_command=["check_annotations.py"], inputs=[ToolInput(tag="in_input_reference_gb", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="input reference *.gb file")), ToolInput(tag="in_input_reference_fasta", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="input reference fasta file exported exported by\n'Extract Annotations'-'Export'-'Selected\nDocuments'-fasta in Geneious, remember to choose\n'Replace spaces in sequence name with underscores'")), ToolInput(tag="in_t_ends", input_type=Int(optional=True), prefix="--t-ends", doc=InputDocumentation(doc="Default=10. The length to check at the both ends of")), ToolInput(tag="in_a_ends", input_type=Int(optional=True), prefix="--a-ends", doc=InputDocumentation(doc="Default:not activated. Activate this calculation and\nassign the length to check at the both ends of\nannotated all regions.")), ToolInput(tag="in_l_threshold", input_type=Int(optional=True), prefix="--l-threshold", doc=InputDocumentation(doc="Default=0.9. Length threshold to report warning.")), ToolInput(tag="in_similarity", input_type=Boolean(optional=True), prefix="--similarity", doc=InputDocumentation(doc="Default=False. Choose to enable similarity")), ToolInput(tag="in_trna_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--c-ends=ENDS_CDS   Default:not activated. Activate this calculation and")), ToolInput(tag="in_calculation_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--s-threshold=SIMILARITY"))], outputs=[], container="quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Annotations_Py_V0_1_0().translate("wdl")

