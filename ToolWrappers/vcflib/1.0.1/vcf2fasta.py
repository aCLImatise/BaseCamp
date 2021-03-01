from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Vcf2Fasta_V0_1_0 = CommandToolBuilder(tool="vcf2fasta", base_command=["vcf2fasta"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Use this reference when decomposing samples.")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Affix this output prefix to each file, none by default")), ToolInput(tag="in_default_ploidy", input_type=Int(optional=True), prefix="--default-ploidy", doc=InputDocumentation(doc="Set a default ploidy for samples which do not have information in the first record (2).")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Affix this output prefix to each file, none by default"))], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Fasta_V0_1_0().translate("wdl")

