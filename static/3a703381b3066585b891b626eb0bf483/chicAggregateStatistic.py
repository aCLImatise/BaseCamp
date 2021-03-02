from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, File, Directory, Int

Chicaggregatestatistic_V0_1_0 = CommandToolBuilder(tool="chicAggregateStatistic", base_command=["chicAggregateStatistic"], inputs=[ToolInput(tag="in_interaction_file", input_type=Array(t=File(), optional=True), prefix="--interactionFile", doc=InputDocumentation(doc="path to the interaction files which should be used for\naggregation of the statistics.")), ToolInput(tag="in_target_file", input_type=Array(t=File(), optional=True), prefix="--targetFile", doc=InputDocumentation(doc="path to the target files which contains the target\nregions to prepare data for differential analysis.")), ToolInput(tag="in_out_filename_suffix", input_type=File(optional=True), prefix="--outFileNameSuffix", doc=InputDocumentation(doc="File name suffix to save the result.")), ToolInput(tag="in_interaction_file_folder", input_type=File(optional=True), prefix="--interactionFileFolder", doc=InputDocumentation(doc="Folder where the interaction files are stored. Applies\nonly for batch mode.")), ToolInput(tag="in_target_file_folder", input_type=File(optional=True), prefix="--targetFileFolder", doc=InputDocumentation(doc="Folder where the target files are stored. Applies only\nfor batch mode.")), ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--outputFolder", doc=InputDocumentation(doc="Output folder containing the files.")), ToolInput(tag="in_write_filenames_to_file", input_type=File(optional=True), prefix="--writeFileNamesToFile", doc=InputDocumentation(doc="turns on batch mode. The files provided by")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (uses the python multiprocessing\nmodule)."))], outputs=[ToolOutput(tag="out_out_filename_suffix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename_suffix", type_hint=File()), doc=OutputDocumentation(doc="File name suffix to save the result.")), ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Output folder containing the files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chicaggregatestatistic_V0_1_0().translate("wdl", allow_empty_container=True)

