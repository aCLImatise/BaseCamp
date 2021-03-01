from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Julietflow_V0_1_0 = CommandToolBuilder(tool="julietflow", base_command=["julietflow"], inputs=[ToolInput(tag="in_bam_ccs_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[arg]  BAM CCS file to process. Required.")), ToolInput(tag="in_reference_fasta_file", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[arg]  Reference FASTA file. Required.")), ToolInput(tag="in_juliet_target_config", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[arg]  Juliet target config. Default=none")), ToolInput(tag="in_number_cpu_cores", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="[arg]  Number of CPU cores. Default=1")), ToolInput(tag="in_maximal_number_default", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[arg]  Maximal number of re-align iterations. Default=1")), ToolInput(tag="in_target_reference_fasta", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[arg]  Target reference FASTA, per default using --ref.")), ToolInput(tag="in_minimal_variant_frequency", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[arg]  Minimal variant frequency. Default=0.")), ToolInput(tag="in_maximal_variant_frequency", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[arg]  Maximal variant frequency. Default=100.")), ToolInput(tag="in_genomic_region_interest", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[arg]  Genomic region of interest, reads will be clipped to that region, empty means all reads.")), ToolInput(tag="in_phase_variants", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Phase variants.")), ToolInput(tag="in_only_report_positions", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Only report known DRM positions.")), ToolInput(tag="in_keep_temporary_files", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="Keep temporary files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Julietflow_V0_1_0().translate("wdl", allow_empty_container=True)

