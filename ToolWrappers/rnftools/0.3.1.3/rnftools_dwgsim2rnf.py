from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Rnftools_Dwgsim2Rnf_V0_1_0 = CommandToolBuilder(tool="rnftools_dwgsim2rnf", base_command=["rnftools", "dwgsim2rnf"], inputs=[ToolInput(tag="in_dwg_sim_prefix", input_type=String(optional=True), prefix="--dwgsim-prefix", doc=InputDocumentation(doc="Prefix for DwgSim.")), ToolInput(tag="in_estimate_unknown", input_type=Boolean(optional=True), prefix="--estimate-unknown", doc=InputDocumentation(doc="Estimate unknown values.")), ToolInput(tag="in_rnf_fast_q", input_type=File(optional=True), prefix="--rnf-fastq", doc=InputDocumentation(doc="Output FASTQ file (- for standard output).")), ToolInput(tag="in_fa_idx", input_type=File(optional=True), prefix="--faidx", doc=InputDocumentation(doc="FAI index of the reference FASTA file (- for standard\ninput). It can be created using 'samtools faidx'.")), ToolInput(tag="in_genome_id", input_type=Int(optional=True), prefix="--genome-id", doc=InputDocumentation(doc="Genome ID in RNF (default: 1).\n"))], outputs=[ToolOutput(tag="out_rnf_fast_q", output_type=File(optional=True), selector=InputSelector(input_to_select="in_rnf_fast_q", type_hint=File()), doc=OutputDocumentation(doc="Output FASTQ file (- for standard output)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnftools_Dwgsim2Rnf_V0_1_0().translate("wdl", allow_empty_container=True)

