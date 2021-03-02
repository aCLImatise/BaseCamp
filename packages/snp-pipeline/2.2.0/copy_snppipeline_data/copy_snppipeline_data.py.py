from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Copy_Snppipeline_Data_Py_V0_1_0 = CommandToolBuilder(tool="copy_snppipeline_data.py", base_command=["copy_snppipeline_data.py"], inputs=[ToolInput(tag="in_which_data", input_type=String(), position=0, doc=InputDocumentation(doc="Which of the supplied data sets to copy.  The choices are:")), ToolInput(tag="in_lambda_virus_inputs", input_type=String(), position=1, doc=InputDocumentation(doc=": Input reference and fastq files")), ToolInput(tag="in_ago_na_inputs", input_type=String(), position=0, doc=InputDocumentation(doc=": Input reference file")), ToolInput(tag="in_ago_na_expected_results", input_type=String(), position=1, doc=InputDocumentation(doc=": Expected results files")), ToolInput(tag="in_listeria_inputs", input_type=String(), position=2, doc=InputDocumentation(doc=": Input reference file")), ToolInput(tag="in_listeria_expected_results", input_type=String(), position=3, doc=InputDocumentation(doc=": Expected results files")), ToolInput(tag="in_configuration_file", input_type=String(), position=4, doc=InputDocumentation(doc=": File of parameters to customize the\nSNP pipeline")), ToolInput(tag="in_results_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The agona and listeria data sets have the reference genome and")), ToolInput(tag="in_dest_directory", input_type=String(), position=0, doc=InputDocumentation(doc="Destination directory into which the SNP pipeline data files will be copied.\nThe data files are copied into the destination directory if the directory\nalready exists.  Otherwise the destination directory is created and the\ndata files are copied there.  (default: current directory)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Copy_Snppipeline_Data_Py_V0_1_0().translate("wdl", allow_empty_container=True)

