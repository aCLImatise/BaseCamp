from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Ppanini_Gene_Caller_V0_1_0 = CommandToolBuilder(tool="ppanini_gene_caller", base_command=["ppanini_gene_caller"], inputs=[ToolInput(tag="in_contig", input_type=File(optional=True), prefix="--contig", doc=InputDocumentation(doc="contigs file (fna)")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="reads file (fastq)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path for outputs")), ToolInput(tag="in_output_basename", input_type=File(optional=True), prefix="--output-basename", doc=InputDocumentation(doc="the basename for the output files\n[DEFAULT: input file basename]")), ToolInput(tag="in_uniref", input_type=Int(optional=True), prefix="--uniref", doc=InputDocumentation(doc="UniRe90 database")), ToolInput(tag="in_resume", input_type=Boolean(optional=True), prefix="--resume", doc=InputDocumentation(doc="bypass commands if the output files exist")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads/processes\n[DEFAULT: 1]")), ToolInput(tag="in_one_contig", input_type=Boolean(optional=True), prefix="--one-contig", doc=InputDocumentation(doc="If there is only one contig file for all samples, then this option should be provided"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Gene_Caller_V0_1_0().translate("wdl", allow_empty_container=True)

