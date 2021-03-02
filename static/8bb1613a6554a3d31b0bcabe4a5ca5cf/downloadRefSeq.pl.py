from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Downloadrefseq_Pl_V0_1_0 = CommandToolBuilder(tool="downloadRefSeq.pl", base_command=["downloadRefSeq.pl"], inputs=[ToolInput(tag="in_seq_ences_out_directory", input_type=String(optional=True), prefix="--seqencesOutDirectory", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=Boolean(optional=True), prefix="--DB", doc=InputDocumentation(doc="")), ToolInput(tag="in_name_ncbi_database", input_type=String(), position=0, doc=InputDocumentation(doc="Name of NCBI database to be downloaded. Default: refseq.")), ToolInput(tag="in_sequences_out_directory", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory for sequences")), ToolInput(tag="in_taxonomy_out_directory", input_type=String(), position=2, doc=InputDocumentation(doc="Output directory for taxonomy")), ToolInput(tag="in_target_branches", input_type=String(), position=3, doc=InputDocumentation(doc="Specification of target branches (comma-separated), e.g. archaea,bacteria,fungi")), ToolInput(tag="in_skip_incomplete_genomes", input_type=String(), position=4, doc=InputDocumentation(doc="Skip incomplete genomes. Default: 0."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Downloadrefseq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

