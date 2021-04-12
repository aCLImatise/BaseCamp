from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String, Boolean

Dfast_Qc_V0_1_0 = CommandToolBuilder(tool="dfast_qc", base_command=["dfast_qc"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input_fasta", doc=InputDocumentation(doc="Input FASTA file (raw or gzipped) [required]")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Output directory (default: OUT)")), ToolInput(tag="in_taxid", input_type=Int(optional=True), prefix="--taxid", doc=InputDocumentation(doc="NCBI taxid for completeness check. Use '--show_taxon'\nfor available taxids. (Default: Automatically inferred\nfrom taxonomy check)")), ToolInput(tag="in_ref_dir", input_type=File(optional=True), prefix="--ref_dir", doc=InputDocumentation(doc="DQC reference directory (default: DQC_REFERENCE_DIR)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix for output (for debugging use, default: None)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="Number of threads for parallel processing (default: 1)")), ToolInput(tag="in_disable_tc", input_type=Boolean(optional=True), prefix="--disable_tc", doc=InputDocumentation(doc="Disable taxonomy check using ANI")), ToolInput(tag="in_disable_cc", input_type=Boolean(optional=True), prefix="--disable_cc", doc=InputDocumentation(doc="Disable completeness check using CheckM")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwriting result")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug mode")), ToolInput(tag="in_show_tax_on", input_type=Boolean(optional=True), prefix="--show_taxon", doc=InputDocumentation(doc="Show available taxa for competeness check"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: OUT)"))], container="quay.io/biocontainers/dfast_qc:0.2.7--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dfast_Qc_V0_1_0().translate("wdl")

