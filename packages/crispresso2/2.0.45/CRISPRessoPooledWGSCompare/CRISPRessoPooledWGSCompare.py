from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Directory, Boolean

Crispressopooledwgscompare_V0_1_0 = CommandToolBuilder(tool="CRISPRessoPooledWGSCompare", base_command=["CRISPRessoPooledWGSCompare"], inputs=[ToolInput(tag="in_comparison", input_type=String(optional=True), prefix="-Comparison", doc=InputDocumentation(doc="two CRISPRessoPooled or CRISPRessoWGS analyses-\n_         ____________________________________           _\n'  )      | __  __  __     __ __        __  __ |         '  )\n.-'       ||__)/  \/  \|  |_ |  \ /|  |/ _ (_  |         .-'\n(____      ||   \__/\__/|__|__|__// |/\|\__)__) |        (____")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Output name (default: )")), ToolInput(tag="in_sample_one_name", input_type=Int(optional=True), prefix="--sample_1_name", doc=InputDocumentation(doc="Sample 1 name (default: Sample_1)")), ToolInput(tag="in_sample_two_name", input_type=Int(optional=True), prefix="--sample_2_name", doc=InputDocumentation(doc="Sample 2 name (default: Sample_2)")), ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--output_folder", doc=InputDocumentation(doc="Number of processes to use for CRISPResso comparison\n(default: 1)")), ToolInput(tag="in_save_also_png", input_type=Boolean(optional=True), prefix="--save_also_png", doc=InputDocumentation(doc="Save also .png images additionally to .pdf files\n(default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Show debug messages (default: False)")), ToolInput(tag="in_cris_presso_pooled_wgs_output_folder_two", input_type=Int(), position=1, doc=InputDocumentation(doc="Second output folder with CRISPRessoPooled or\nCRISPRessoWGS analysis"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Number of processes to use for CRISPResso comparison\n(default: 1)"))], container="quay.io/biocontainers/crispresso2:2.0.45--py27h3dcb392_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crispressopooledwgscompare_V0_1_0().translate("wdl")

