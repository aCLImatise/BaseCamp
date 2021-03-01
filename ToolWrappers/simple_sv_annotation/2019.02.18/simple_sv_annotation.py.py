from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Simple_Sv_Annotation_Py_V0_1_0 = CommandToolBuilder(tool="simple_sv_annotation.py", base_command=["simple_sv_annotation.py"], inputs=[ToolInput(tag="in_gene_list", input_type=File(optional=True), prefix="--gene_list", doc=InputDocumentation(doc="File with names of genes (one per line) for\nprioritisation")), ToolInput(tag="in_known_fusion_pairs", input_type=File(optional=True), prefix="--known_fusion_pairs", doc=InputDocumentation(doc="File with known fusion gene pairs, one pair per line\ndelimited by comma")), ToolInput(tag="in_known_fusion_promiscuous", input_type=File(optional=True), prefix="--known_fusion_promiscuous", doc=InputDocumentation(doc="File with known promiscuous fusion genes, one gene\nname per line")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name (must not exist). Does not support\nbgzipped output. Use '-' for stdout.\n[<invcf>.simpleann.vcf]")), ToolInput(tag="in_exon_nums", input_type=File(optional=True), prefix="--exonNums", doc=InputDocumentation(doc="List of custom exon numbers. A transcript listed in\nthis file will be annotated with the numbers found in\nthis file, not the numbers found in the snpEff result\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name (must not exist). Does not support\nbgzipped output. Use '-' for stdout.\n[<invcf>.simpleann.vcf]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simple_Sv_Annotation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

