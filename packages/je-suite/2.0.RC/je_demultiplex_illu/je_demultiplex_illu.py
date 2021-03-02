from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Je_Demultiplex_Illu_V0_1_0 = CommandToolBuilder(tool="je_demultiplex_illu", base_command=["je", "demultiplex-illu"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_data_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Required. ")), ToolInput(tag="in_required_dot", input_type=String(), position=0, doc=InputDocumentation(doc="INDEX_FILE2=File")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="sample1          ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz")), ToolInput(tag="in_provided_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Indicates if both index barcodes encode redundant information i.e. if both barcodes are ")), ToolInput(tag="in_distinct", input_type=String(), position=0, doc=InputDocumentation(doc="values can be given here using the syntax MM=X:Z where X and Z are 2 integers to use for ")), ToolInput(tag="in_becomes", input_type=String(), position=0, doc=InputDocumentation(doc="'@D3FCO8P1:178:C1WLBACXX:7:1101:1836:1965:2:N:0:BARCODE'")), ToolInput(tag="in_detected_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: Standard. This option can be set to 'null' to clear the default value. ")), ToolInput(tag="in_barcoded_dot", input_type=String(), position=0, doc=InputDocumentation(doc="N.B: this file will have a size of about one of the fastq input files.  Default value: ")), ToolInput(tag="in_null_dot", input_type=String(), position=1, doc=InputDocumentation(doc="FORCE=Boolean                 Allows to overwrite existing files (system rights still apply).\nDefault value: false. This option can be set to 'null' to clear the default value."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Je_Demultiplex_Illu_V0_1_0().translate("wdl", allow_empty_container=True)

