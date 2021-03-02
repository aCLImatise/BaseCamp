from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Directory, Boolean

Blastbesties_V0_1_0 = CommandToolBuilder(tool="blastbesties", base_command=["blastbesties"], inputs=[ToolInput(tag="in_blast_a_vb", input_type=File(optional=True), prefix="--blastAvB", doc=InputDocumentation(doc="Blast tab result file for fastaA query against fastaB\nsubject")), ToolInput(tag="in_blast_bva", input_type=File(optional=True), prefix="--blastBvA", doc=InputDocumentation(doc="Blast tab result file for fastaB query against fastaA\nsubject")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minLen", doc=InputDocumentation(doc="Minimum length of hit to consider valid.")), ToolInput(tag="in_eval", input_type=String(optional=True), prefix="--eVal", doc=InputDocumentation(doc="Maximum e-value to consider valid pair.")), ToolInput(tag="in_bit_score", input_type=String(optional=True), prefix="--bitScore", doc=InputDocumentation(doc="Minimum bitscore to consider valid pair.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outFile", doc=InputDocumentation(doc="Write reciprocal blast pairs to this file.")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="Directory for new sequence files to be written to.\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blastbesties_V0_1_0().translate("wdl", allow_empty_container=True)

