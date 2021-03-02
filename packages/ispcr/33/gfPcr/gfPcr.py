from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Gfpcr_V0_1_0 = CommandToolBuilder(tool="gfPcr", base_command=["gfPcr"], inputs=[ToolInput(tag="in_maxsize", input_type=Int(optional=True), prefix="-maxSize", doc=InputDocumentation(doc="- Maximum size of PCR product (default 4000)")), ToolInput(tag="in_min_perfect", input_type=Int(optional=True), prefix="-minPerfect", doc=InputDocumentation(doc="- Minimum size of perfect match at 3' end of primer (default 15)")), ToolInput(tag="in_min_good", input_type=Int(optional=True), prefix="-minGood", doc=InputDocumentation(doc="- Minimum size where there must be 2 matches for each mismatch (default 18)")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="-out", doc=InputDocumentation(doc="- Output format.  Either\nfa - fasta with position, primers in header (default)\nbed - tab delimited format. Fields: chrom/start/end/name/score/strand\npsl - blat format.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="- Name to use in bed output.")), ToolInput(tag="in_host", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_port", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_dir", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_f_primer", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_r_primer", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfpcr_V0_1_0().translate("wdl", allow_empty_container=True)

