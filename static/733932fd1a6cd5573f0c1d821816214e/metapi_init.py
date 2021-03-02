from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Metapi_Init_V0_1_0 = CommandToolBuilder(tool="metapi_init", base_command=["metapi", "init"], inputs=[ToolInput(tag="in_workdir", input_type=String(optional=True), prefix="--workdir", doc=InputDocumentation(doc="project workdir, default: ./ (default: ./)")), ToolInput(tag="in_samples", input_type=Int(optional=True), prefix="--samples", doc=InputDocumentation(doc="desired input:\nsamples list, tsv format required.\nif begin from trimming, rmhost, or assembly:\nif it is fastq:\nthe header is: [id, fq1, fq2]\nif it is sra:\nthe header is: [id, sra]\nif begin from simulate:\nthe header is: [id, genome, abundance, reads_num, model]")), ToolInput(tag="in_begin", input_type=String(optional=True), prefix="--begin", doc=InputDocumentation(doc="pipeline starting point (default: trimming)\n"))], outputs=[], container="quay.io/biocontainers/metapi:1.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metapi_Init_V0_1_0().translate("wdl")

