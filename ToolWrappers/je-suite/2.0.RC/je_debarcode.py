from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Je_Debarcode_V0_1_0 = CommandToolBuilder(tool="je_debarcode", base_command=["je", "debarcode"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_col_two_dot", input_type=Int(), position=0, doc=InputDocumentation(doc="In this format, a simple BARCODE slot is expected in the ReadLayout and NO headers are ")), ToolInput(tag="in_e_dot_gdot", input_type=String(), position=0, doc=InputDocumentation(doc="sample1 ATAT|GAGG:CCAA|TGTG\n3. Extended barcode file format : 3 (single-end) or 4 (paired-end) tab-delimited colums\nsame as the simple barcode file format but the extra columns contains the file name(s)")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="sample1          ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz")), ToolInput(tag="in_required_dot", input_type=String(), position=1, doc=InputDocumentation(doc="Cannot be used in conjuction with option(s) USE_EMBASE (EM)")), ToolInput(tag="in_formats_dot", input_type=String(), position=0, doc=InputDocumentation(doc="When provided, Je expects as many 'OF=' as output layouts ('OL=...') parameters or ")), ToolInput(tag="in_barcoded_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: null. "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Je_Debarcode_V0_1_0().translate("wdl", allow_empty_container=True)

