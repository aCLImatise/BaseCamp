from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, String

Sortbyrefandcor_Pl_V0_1_0 = CommandToolBuilder(tool="sortByRefAndCor.pl", base_command=["sortByRefAndCor.pl"], inputs=[ToolInput(tag="in_contig_name_field", input_type=Int(optional=True), prefix="--k", doc=InputDocumentation(doc=":   contig name is in the field POS (1-based)\nof input lines.")), ToolInput(tag="in_contig_cordinate_field", input_type=Int(optional=True), prefix="--c", doc=InputDocumentation(doc=":   contig cordinate is in the field COR (1-based)\nof input lines.")), ToolInput(tag="in_tmp", input_type=Directory(optional=True), prefix="--tmp", doc=InputDocumentation(doc=": temp directory [default=/tmp]")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input file to sort. If '-' is specified, \nthen reads from STDIN.")), ToolInput(tag="in_ref_dict", input_type=String(), position=1, doc=InputDocumentation(doc=".fai file, or ANY file that has contigs, in the\ndesired soting order, as its first column."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sortbyrefandcor_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

