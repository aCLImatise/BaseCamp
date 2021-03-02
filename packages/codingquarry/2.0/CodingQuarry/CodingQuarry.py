from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Codingquarry_V0_1_0 = CommandToolBuilder(tool="CodingQuarry", base_command=["CodingQuarry"], inputs=[ToolInput(tag="in_file_name_genome", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="by file name of genome sequence")), ToolInput(tag="in_file_aligned_recommended", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="file of aligned transcripts (recommended)")), ToolInput(tag="in_name_providing_parameters", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="name, providing pre-trained parameters exist")), ToolInput(tag="in_high_confidence_genes", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="of high confidence genes that can be used for training")), ToolInput(tag="in_of_threads_default", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="of threads (default is 1)")), ToolInput(tag="in_when_using_rnaseq", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="this when using un-stranded RNA-seq. By default,\nCodingQuarry expects stranded RNA-seq")), ToolInput(tag="in_stage_see_manual", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="after stage 1 (see manual)")), ToolInput(tag="in_file_aligned_est", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="file of aligned EST data")), ToolInput(tag="in_predict_genes_is", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="not predict genes in soft-masked regions (that is, hard-mask these regions)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Codingquarry_V0_1_0().translate("wdl", allow_empty_container=True)

