from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Extract_Biome_V0_1_0 = CommandToolBuilder(tool="extract_biome", base_command=["extract-biome"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="--in", doc=InputDocumentation(doc="[string]                    Input MEGAN comparison file (.megan file). Mandatory option.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="[string]                   Output file. Default value: biome.megan.")), ToolInput(tag="in_biome", input_type=Boolean(optional=True), prefix="--biome", doc=InputDocumentation(doc="[string]                 Biome type to compute. Default value: total. Legal values: total, core, rare")), ToolInput(tag="in_samples", input_type=Boolean(optional=True), prefix="--samples", doc=InputDocumentation(doc="[string(s)]            Samples to use or 'ALL'. Default value(s): ALL.")), ToolInput(tag="in_sample_threshold_percent", input_type=Boolean(optional=True), prefix="--sampleThresholdPercent", doc=InputDocumentation(doc="[number]   Min or max percent of samples that class must be present in to be included in core or rare biome, resp.. Default value: 50.0.")), ToolInput(tag="in_class_threshold_percent", input_type=Boolean(optional=True), prefix="--classThresholdPercent", doc=InputDocumentation(doc="[number]   Min percent of sample that reads assigned to class must achieve for class to be considered present in sample. Default value: 0.1.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Echo commandline options and be verbose. Default value: false."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="[string]                   Output file. Default value: biome.megan."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Biome_V0_1_0().translate("wdl", allow_empty_container=True)

