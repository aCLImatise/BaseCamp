from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Directory, Int

Fast_Circ_Py_V0_1_0 = CommandToolBuilder(tool="fast_circ.py", base_command=["fast_circ.py"], inputs=[ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="Gene annotation.")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome FASTA file.")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Annotation GTF file.")), ToolInput(tag="in_aligner_tophatfusion_star", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Aligner (TopHat-Fusion, STAR, MapSplice, BWA, segemehl).")), ToolInput(tag="in_pe", input_type=Boolean(optional=True), prefix="--pe", doc=InputDocumentation(doc="Parse paired-end alignment file (only for TopHat-Fusion).")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Input file.")), ToolInput(tag="in_pa_plus", input_type=Directory(optional=True), prefix="--pAplus", doc=InputDocumentation(doc="TopHat mapping directory for p(A)+ RNA-seq.")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="Running threads. [default: 10]")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory. [default: .]")), ToolInput(tag="in_annotate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_de_novo", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_parse", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory. [default: .]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fast_Circ_Py_V0_1_0().translate("wdl", allow_empty_container=True)

