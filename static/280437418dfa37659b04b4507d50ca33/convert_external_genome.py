from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Convert_External_Genome_V0_1_0 = CommandToolBuilder(tool="convert_external_genome", base_command=["convert_external_genome"], inputs=[ToolInput(tag="in_nuc_me_rpath", input_type=File(optional=True), prefix="--nucmerpath", doc=InputDocumentation(doc="Path to the 'nucmer' executable.")), ToolInput(tag="in_nuc_mer_args", input_type=String(optional=True), prefix="--nucmerargs", doc=InputDocumentation(doc="Optional arguments to pass to the 'nucmer' executable.")), ToolInput(tag="in_delta_filter_path", input_type=File(optional=True), prefix="--deltafilterpath", doc=InputDocumentation(doc="Path to the 'delta-filter' executable.")), ToolInput(tag="in_delta_filter_args", input_type=String(optional=True), prefix="--deltafilterargs", doc=InputDocumentation(doc="Optional arguments to pass to the 'delta-filter'\nexecutable.")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Path to the reference fasta file.")), ToolInput(tag="in_external", input_type=File(optional=True), prefix="--external", doc=InputDocumentation(doc="Path to the external genome fasta file.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of this external genome."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_External_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

