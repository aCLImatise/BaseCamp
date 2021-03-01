from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Msa2Vcf_Py_V0_1_0 = CommandToolBuilder(tool="msa2vcf.py", base_command=["msa2vcf.py"], inputs=[ToolInput(tag="in_ref", input_type=Boolean(optional=True), prefix="--REF", doc=InputDocumentation(doc="reference name used for the CHROM column. Optional\nDefault: chrUn")), ToolInput(tag="in_all_sites", input_type=Boolean(optional=True), prefix="--allsites", doc=InputDocumentation(doc="print all sites\nDefault: false")), ToolInput(tag="in_consensus", input_type=Boolean(optional=True), prefix="--consensus", doc=InputDocumentation(doc="ruse this sequence as CONSENSUS")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="save computed fasta sequence in this file.")), ToolInput(tag="in_haploid", input_type=Boolean(optional=True), prefix="--haploid", doc=InputDocumentation(doc="haploid output\nDefault: false")), ToolInput(tag="in_help_format", input_type=Boolean(optional=True), prefix="--helpFormat", doc=InputDocumentation(doc="What kind of help. One of [usage,markdown,xml].")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file. Optional . Default: stdout")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file. Optional . Default: stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msa2Vcf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

