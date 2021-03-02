from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Deblur_Build_Biom_Table_V0_1_0 = CommandToolBuilder(tool="deblur_build_biom_table", base_command=["deblur", "build-biom-table"], inputs=[ToolInput(tag="in_min_reads", input_type=Int(optional=True), prefix="--min-reads", doc=InputDocumentation(doc="In output biom table - keep only sequences\nappearing at least min-reads in all samples\ncombined.  [default: 10]")), ToolInput(tag="in_file_type", input_type=String(optional=True), prefix="--file_type", doc=InputDocumentation(doc="ending of files to be added to the biom table\n[default: .fasta.trim.derep.no_artifacts.msa.debl\nur.no_chimeras]")), ToolInput(tag="in_log_level", input_type=Int(optional=True), prefix="--log-level", doc=InputDocumentation(doc="RANGE  Level of messages for log file(range 1-debug to")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="log file name  [default: deblur.log]")), ToolInput(tag="in_seqs_fp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_biom_fp", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deblur_Build_Biom_Table_V0_1_0().translate("wdl", allow_empty_container=True)

