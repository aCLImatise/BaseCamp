from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Varlociraptor_Plot_Variant_Calling_Prior_V0_1_0 = CommandToolBuilder(tool="varlociraptor_plot_variant_calling_prior", base_command=["varlociraptor", "plot", "variant-calling-prior"], inputs=[ToolInput(tag="in_contig", input_type=String(optional=True), prefix="--contig", doc=InputDocumentation(doc="Contig to consider for ploidy information.")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="Sample to plot.")), ToolInput(tag="in_scenario", input_type=String(optional=True), prefix="--scenario", doc=InputDocumentation(doc="Variant calling scenario that configures the prior."))], outputs=[], container="quay.io/biocontainers/varlociraptor:3.0.0--hd302352_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varlociraptor_Plot_Variant_Calling_Prior_V0_1_0().translate("wdl")

