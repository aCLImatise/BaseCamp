from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Split_Priors_By_Chromosome_V0_1_0 = CommandToolBuilder(tool="split_priors_by_chromosome", base_command=["split-priors-by-chromosome"], inputs=[ToolInput(tag="in_gzip_output_files", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="GZIP output files")), ToolInput(tag="in_only_extracts_given", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Only extracts given chromosomes. Expects comma-separated")), ToolInput(tag="in_use_gzip_instead", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Use gzip instead of python zip module. Can be faster, but\nwill spawn one gzip process for every chromosome/sample,\nwhich can be a lot.\n")), ToolInput(tag="in_list_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-s SAMPLEWISE   Read header of given BAM file and priors split by sample"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Priors_By_Chromosome_V0_1_0().translate("wdl", allow_empty_container=True)

