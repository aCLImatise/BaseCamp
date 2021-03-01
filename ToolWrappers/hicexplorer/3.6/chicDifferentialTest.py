from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, File, String, Directory, Boolean, Int

Chicdifferentialtest_V0_1_0 = CommandToolBuilder(tool="chicDifferentialTest", base_command=["chicDifferentialTest"], inputs=[ToolInput(tag="in_interaction_file", input_type=Array(t=File(), optional=True), prefix="--interactionFile", doc=InputDocumentation(doc="path to the interaction files which should be used for\nthe differential test.")), ToolInput(tag="in_alpha", input_type=String(optional=True), prefix="--alpha", doc=InputDocumentation(doc="define a significance level (alpha) for accepting\nsamples")), ToolInput(tag="in_interaction_file_folder", input_type=File(optional=True), prefix="--interactionFileFolder", doc=InputDocumentation(doc="Folder where the interaction files are stored. Applies\nonly for batch mode (Default: .).")), ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--outputFolder", doc=InputDocumentation(doc="Output folder of the files (Default:\ndifferentialResults).")), ToolInput(tag="in_statistic_test", input_type=String(optional=True), prefix="--statisticTest", doc=InputDocumentation(doc="Type of test used: fisher's exact test or chi2\ncontingency (Default: fisher).")), ToolInput(tag="in_batch_mode", input_type=Boolean(optional=True), prefix="--batchMode", doc=InputDocumentation(doc="turn on batch mode. The given file for")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (uses the python multiprocessing\nmodule) (Default: 4).")), ToolInput(tag="in_rejected_filenames_to_file", input_type=File(optional=True), prefix="--rejectedFileNamesToFile", doc=InputDocumentation(doc="Writes the names of the rejected H0 (therefore\ncontaining the differential interactions) to file. Can\nbe used for batch processing mode of\nchicPlotViewpoint. (Default: rejected_H0.txt)."))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Output folder of the files (Default:\ndifferentialResults)."))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chicdifferentialtest_V0_1_0().translate("wdl")

