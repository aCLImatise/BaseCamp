from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Array

Metapi_Init_V0_1_0 = CommandToolBuilder(tool="metapi_init", base_command=["metapi", "init"], inputs=[ToolInput(tag="in_workdir", input_type=String(optional=True), prefix="--workdir", doc=InputDocumentation(doc="project workdir (default: ./)")), ToolInput(tag="in_samples", input_type=Int(optional=True), prefix="--samples", doc=InputDocumentation(doc="desired input:\nsamples list, tsv format required.\nif begin from trimming, rmhost, or assembly:\nif it is fastq:\nthe header is: [id, fq1, fq2]\nif it is sra:\nthe header is: [id, sra]\nif begin from simulate:\nthe header is: [id, genome, abundance, reads_num, model]")), ToolInput(tag="in_begin", input_type=String(optional=True), prefix="--begin", doc=InputDocumentation(doc="pipeline starting point (default: trimming)")), ToolInput(tag="in_trimmer", input_type=String(optional=True), prefix="--trimmer", doc=InputDocumentation(doc="which trimmer used (default: fastp)")), ToolInput(tag="in_rm_hoster", input_type=String(optional=True), prefix="--rmhoster", doc=InputDocumentation(doc="which rmhoster used (default: bowtie2)")), ToolInput(tag="in_assembler", input_type=String(optional=True), prefix="--assembler", doc=InputDocumentation(doc="[{idba-ud,megahit,metaspades,spades,opera-ms} ...]\nwhich assembler used, required when begin with binning, can be changed in config.yaml (default: ['metaspades'])")), ToolInput(tag="in_binner", input_type=Array(t=String(), optional=True), prefix="--binner", doc=InputDocumentation(doc="wchich binner used (default: ['metabat2', 'concoct', 'maxbin2', 'graphbin2', 'vamb', 'dastools'])\n"))], outputs=[], container="quay.io/biocontainers/metapi:1.1.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metapi_Init_V0_1_0().translate("wdl")

