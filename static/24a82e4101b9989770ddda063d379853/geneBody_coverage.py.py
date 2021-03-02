from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Genebody_Coverage_Py_V0_1_0 = CommandToolBuilder(tool="geneBody_coverage.py", base_command=["geneBody_coverage.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input file(s) in BAM format. '-i' takes these input:\n1) a single BAM file. 2) ',' separated BAM files. 3)\ndirectory containing one or more bam files. 4) plain\ntext file containing the path of one or more bam file\n(Each row is a BAM file path). All BAM files should be\nsorted and indexed using samtools.")), ToolInput(tag="in_ref_gene", input_type=String(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in bed format. [required]")), ToolInput(tag="in_minimum_length", input_type=Int(optional=True), prefix="--minimum_length", doc=InputDocumentation(doc="Minimum mRNA length (bp). mRNA smaller than\n'min_mRNA_length' will be skipped. default=100")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="Output file format, 'pdf', 'png' or 'jpeg'.\ndefault=pdf")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s). [required]\n"))], outputs=[ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="Output file format, 'pdf', 'png' or 'jpeg'.\ndefault=pdf"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genebody_Coverage_Py_V0_1_0().translate("wdl", allow_empty_container=True)

