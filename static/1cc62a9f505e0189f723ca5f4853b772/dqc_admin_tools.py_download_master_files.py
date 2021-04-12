from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Dqc_Admin_Tools_Py_Download_Master_Files_V0_1_0 = CommandToolBuilder(tool="dqc_admin_tools.py_download_master_files", base_command=["dqc_admin_tools.py", "download_master_files"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug mode")), ToolInput(tag="in_ref_dir", input_type=File(optional=True), prefix="--ref_dir", doc=InputDocumentation(doc="DQC reference directory (default: DQC_REFERENCE_DIR)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="Number of threads for parallel processing (default:1)")), ToolInput(tag="in_targets", input_type=Boolean(optional=True), prefix="--targets", doc=InputDocumentation(doc="[STR [STR ...]]\nTarget(s) for downloading. [asm: Assembly report, ani:\nANI report, tsr: Type strain report, hmm: TIGR HMMER\nprofile, checkm: CheckM reference data, taxdump: NCBI\ntaxdump.tar.gz] (default: asm ani tsr)\n"))], outputs=[], container="quay.io/biocontainers/dfast_qc:0.2.7--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dqc_Admin_Tools_Py_Download_Master_Files_V0_1_0().translate("wdl")

