from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Phyluce_Snp_Summarize_Vcf_File_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_summarize_vcf_file", base_command=["phyluce_snp_summarize_vcf_file"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The vcf file to process"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Summarize_Vcf_File_V0_1_0().translate("wdl", allow_empty_container=True)

