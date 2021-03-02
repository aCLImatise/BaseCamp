from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ansible_Vault_V0_1_0 = CommandToolBuilder(tool="ansible_vault", base_command=["ansible-vault"], inputs=[ToolInput(tag="in_create_vertical_line_decrypt_vertical_line_edit_vertical_line_encrypt_vertical_line_re_key_vertical_line_view", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ansible_Vault_V0_1_0().translate("wdl", allow_empty_container=True)

