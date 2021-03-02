from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Bcbio_Vm_Py_Template_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_template", base_command=["bcbio_vm.py", "template"], inputs=[ToolInput(tag="in_only_metadata", input_type=Boolean(optional=True), prefix="--only-metadata", doc=InputDocumentation(doc="Ignore samples not present in metadata CSV file")), ToolInput(tag="in_force_single", input_type=Boolean(optional=True), prefix="--force-single", doc=InputDocumentation(doc="Treat all files as single reads")), ToolInput(tag="in_separators", input_type=String(optional=True), prefix="--separators", doc=InputDocumentation(doc="semicolon separated list of separators that indicates\npaired files.")), ToolInput(tag="in_system_config", input_type=File(optional=True), prefix="--systemconfig", doc=InputDocumentation(doc="Global YAML configuration file specifying system\ndetails. Defaults to installed bcbio_system.yaml.")), ToolInput(tag="in_num_cores", input_type=Int(optional=True), prefix="--numcores", doc=InputDocumentation(doc="Total cores to use for processing")), ToolInput(tag="in_rel_paths", input_type=Boolean(optional=True), prefix="--relpaths", doc=InputDocumentation(doc="Convert inputs into relative paths to the work\ndirectory\n")), ToolInput(tag="in_template", input_type=String(), position=0, doc=InputDocumentation(doc="Template name or path to template YAML file. Built in\nchoices: freebayes-variant, gatk-variant, tumor-\npaired, noalign-variant, illumina-rnaseq, illumina-\nchipseq")), ToolInput(tag="in_metadata", input_type=String(), position=1, doc=InputDocumentation(doc="CSV file with project metadata. Name of file used as\nproject name.")), ToolInput(tag="in_input_files", input_type=String(), position=2, doc=InputDocumentation(doc="Input read files, in BAM or fastq format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Template_V0_1_0().translate("wdl", allow_empty_container=True)

